//
//  ViewController.h
//  testsampler
//
//  Created by apple on 2016/08/02.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property (nonatomic) AVAudioPlayer *audioPlayer;
@property (weak, nonatomic) IBOutlet UIButton *Abutton;

- (IBAction)Abtnfunc:(id)sender;

@end

