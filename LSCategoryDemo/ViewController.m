//
//  ViewController.m
//  LSCategoryDemo
//
//  Created by dev on 2018/10/9.
//  Copyright © 2018 dev. All rights reserved.
//

#import "ViewController.h"

#import <LSCategoryKit/LSCategoryKit.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *mView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)click:(UIButton *)sender {
    sender.selected = !sender.selected;
    
    if (sender.selected) {
        [self.mView ls_addMaskLayerCorner:UIRectCornerTopLeft|UIRectCornerBottomRight radius:30];
    }else{
        [self.mView ls_removeMaskLayerCorner];
    }
    
    
}

@end
