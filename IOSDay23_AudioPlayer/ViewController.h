//
//  ViewController.h
//  IOSDay23_AudioPlayer
//
//  Created by Student P_02 on 09/05/18.
//  Copyright © 2018 Shital. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *seekSlider;
@property (weak, nonatomic) IBOutlet UISlider *volumeSlider;


- (IBAction)PlayButton:(id)sender;

- (IBAction)PauseButton:(id)sender;
- (IBAction)StopButton:(id)sender;
@property AVAudioPlayer *audioPlayer;
- (IBAction)ChangeValume:(id)sender;

@end

