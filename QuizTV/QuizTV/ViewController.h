//
//  ViewController.h
//  QuizTV
//
//  Created by Nick Culbertson on 11/4/15.
//  Copyright © 2015 Nick Culbertson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UILabel *QuestionLabel;
    IBOutlet UILabel *TopLeftLabel;
    IBOutlet UILabel *TopRightLabel;
    IBOutlet UIButton *AnswerButton1;
    IBOutlet UIButton *AnswerButton2;
    IBOutlet UIButton *AnswerButton3;
    IBOutlet UIButton *AnswerButton4;
    IBOutlet UIButton *NextButton;
    int QuestionCount;
    int AnswerCount;
    int ScoreCount;
}
- (IBAction)Answer1;
- (IBAction)Answer2;
- (IBAction)Answer3;
- (IBAction)Answer4;
- (IBAction)Next;


@end

