//
//  ViewController.m
//  ff
//
//  Created by lanouhn on 16/1/29.
//  Copyright © 2016年 孟刘扬. All rights reserved.
//

#import "ViewController.h"
#import "HeaderCollectionReusableView.h"
#import "HeaderCollectionViewCell.h"
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
     [super viewDidLoad];
     UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
     self.collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 64, 400, 667 - 64) collectionViewLayout:layout];
     
     // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
     return 2;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
     if (section == 0) {
          return 0;
     }
     return 2;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
      HeaderCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
     
     if (indexPath.section == 0) {
          return nil;
     }else{
     return cell;
     }
     
     
     
    
     
     
     
     
}
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
     
          HeaderCollectionReusableView *header = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header" forIndexPath:indexPath];
    
     return header;
     
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
     if (indexPath.section == 0) {
          return CGSizeMake(0, 0);
     }
     return CGSizeMake(100, 100);

}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
     if (section == 0) {
          return CGSizeMake(400, 200);
     }
     return CGSizeMake(0, 30);
}
- (void)didReceiveMemoryWarning {
     [super didReceiveMemoryWarning];
     // Dispose of any resources that can be recreated.
}

@end
