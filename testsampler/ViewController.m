//
//  ViewController.m
//  testsampler
//
//  Created by apple on 2016/08/02.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    NSError *error = nil;
    
    // 再生する audio ファイルのパスを取得
    NSString *path = [[NSBundle mainBundle] pathForResource:@"kick" ofType:@"aiff"];

    NSArray *newArr = @[path];
    NSString *newItem = newArr[0];

    // パスから、再生するURLを作成する
    NSURL *url = [[NSURL alloc] initFileURLWithPath:newItem];
    
    // auido を再生するプレイヤーを作成する
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    
    // エラーが起きたとき
    if ( error != nil )
    {
        NSLog(@"Error %@", [error localizedDescription]);
    }
    
    // 自分自身をデリゲートに設定
    [self.audioPlayer setDelegate:self];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Abtnfunc:(id)sender {

    [self.audioPlayer play];
    
}

@end
