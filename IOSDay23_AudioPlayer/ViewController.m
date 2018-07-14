//
//  ViewController.m
//  IOSDay23_AudioPlayer
//
//  Created by Student P_02 on 09/05/18.
//  Copyright © 2018 Shital. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
int flag=0;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url=[[NSBundle mainBundle]URLForResource:@"Morya Morya" withExtension:@"mp3"];
    self.audioPlayer=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
    self.audioPlayer.volume=0.5;
    self.seekSlider.minimumValue=0;
    self.seekSlider.maximumValue=self.audioPlayer.duration;

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)PlayButton:(id)sender
{
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(seekTime) userInfo:nil repeats:YES];
    self.audioPlayer.currentTime=self.seekSlider.value;
    [self.audioPlayer play];
    flag=0;
}
-(void)seekTime
{
    if(flag==0)
    {
        self.seekSlider.value=self.seekSlider.value+1;
    }
}
- (IBAction)PauseButton:(id)sender
{
    [self.audioPlayer pause];
    flag=2;

}

- (IBAction)StopButton:(id)sender
{
    [self.audioPlayer stop];
    self.seekSlider.value=0;
    flag=1;

}
- (IBAction)ChangeValume:(id)sender
{
    self.audioPlayer.volume=self.volumeSlider.value;

}
@end
