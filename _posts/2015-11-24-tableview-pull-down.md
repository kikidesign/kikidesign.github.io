---
layout: post
title:  "tableview的下拉刷新"
date:   2015-11-24 13:30:00
categories: iOS git
---

实现tableview的下拉刷新  

{% highlight ruby %}  
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.0];
    //当tableview下拉到最后一行的时候才触发
    if (indexPath.section == sectionNum - 1) {
        //定义一个UIView
        UIView *footSpinnerView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, width, 60.0f)];
        //顶一个有刷新图标的view
        UIActivityIndicatorView *activity = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake((width-60)/2, 0.0f, 60.0f, 60.0f)];
        activity.color = [UIColor blackColor];
        [activity startAnimating];//启动有刷新图标的view
        footSpinnerView.backgroundColor = [UIColor whiteColor];
        [footSpinnerView addSubview:activity];
        
        //设置footerview
        self.tableView.tableFooterView = footSpinnerView;
        dispatch_queue_t queue = dispatch_queue_create("my queue", nil);
        //在后台线程添加数据
        dispatch_async(queue, ^(void){
            currentPage=currentPage+1;
            NSString *newUrl= [NSString stringWithFormat:@"https://ms.aicheplus.com/v1/items/xiche/%@/%@/%ld",lbs_dic[@"lat"],lbs_dic[@"lng"],(long)currentPage];
            manager = [AFHTTPRequestOperationManager manager];
            [manager GET:newUrl parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
                NSArray *newArr=responseObject[@"info"];
                if (newArr.count>0) {
                    NSLog(@"第%ld页数组 %@",(long)currentPage,newArr);
                    NSMutableArray *arrM = [[NSMutableArray alloc] init];
                    [arrM addObjectsFromArray:MaintainArr];
                    [arrM addObjectsFromArray:newArr];
                    MaintainArr = arrM;
                    if (MaintainArr.count>0) {
                        //添加完数据就重新加载数据
                        sectionNum=MaintainArr.count;
                        [self.tableView reloadData];
                    }
                }else{
                    currentPage=currentPage-1;
                }
            } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                NSLog(@"Error: %@", error);
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"获取列表失败，请检查您的网络是否正常" delegate:self  cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
                [alert show];
            }];
        });
    } else {
        //如果不是最后一行,则把footerview和headerview都设为nil
        self.tableView.tableFooterView = nil;
        self.tableView.tableHeaderView = nil;
    }
}
{% endhighlight %}
