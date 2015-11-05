//
//  ViewController.m
//  QuizTV
//
//  Created by Nick Culbertson on 11/4/15.
//  Copyright © 2015 Nick Culbertson. All rights reserved.
//


//// Questions From http://www.mirror.co.uk/tv/tv-news/80s-movie-quiz-test-your-3662076

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    //Setting up initial view
    AnswerButton1.enabled=NO;
    AnswerButton2.enabled=NO;
    AnswerButton3.enabled=NO;
    AnswerButton4.enabled=NO;
    NextButton.enabled=YES;
    TopRightLabel.text=[NSString stringWithFormat:@""];
    TopLeftLabel.text=[NSString stringWithFormat:@""];
    QuestionCount=-1;
    [NextButton setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)Answer{
    //setting up answer configuration
    AnswerButton1.enabled=NO;
    AnswerButton2.enabled=NO;
    AnswerButton3.enabled=NO;
    AnswerButton4.enabled=NO;
    NextButton.enabled=YES;
    TopRightLabel.text=[NSString stringWithFormat:@"Score - %d of %d",ScoreCount,QuestionCount+1];
    [self UpdateView];
    if(QuestionCount==14){
        [NextButton setTitle:@"Play Again" forState:UIControlStateNormal];
    }
    if(AnswerCount==1){
        [AnswerButton1 setBackgroundImage:[UIImage imageNamed:@"green.png"]
                                 forState:UIControlStateNormal];
    }else if(AnswerCount==2){
        [AnswerButton2 setBackgroundImage:[UIImage imageNamed:@"green.png"]
                                 forState:UIControlStateNormal];
    }else if(AnswerCount==3){
        [AnswerButton3 setBackgroundImage:[UIImage imageNamed:@"green.png"]
                                 forState:UIControlStateNormal];
    }else if(AnswerCount==4){
        [AnswerButton4 setBackgroundImage:[UIImage imageNamed:@"green.png"]
                                 forState:UIControlStateNormal];
    }
    
}
- (IBAction)Answer1 {
    [AnswerButton1 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    [AnswerButton2 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    [AnswerButton3 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    [AnswerButton4 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    if(AnswerCount==1){
        QuestionLabel.text=[NSString stringWithFormat:@"Correct!"];
        ScoreCount++;
    }else{
        QuestionLabel.text=[NSString stringWithFormat:@"Wrong!"];
        [AnswerButton1 setBackgroundImage:[UIImage imageNamed:@"red.png"]
                                 forState:UIControlStateNormal];
    }
    [self Answer];
}
- (IBAction)Answer2 {
    [AnswerButton1 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    [AnswerButton2 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    [AnswerButton3 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    [AnswerButton4 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    if(AnswerCount==2){
        QuestionLabel.text=[NSString stringWithFormat:@"Correct!"];
        ScoreCount++;
    }else{
        QuestionLabel.text=[NSString stringWithFormat:@"Wrong!"];
        [AnswerButton2 setBackgroundImage:[UIImage imageNamed:@"red.png"]
                                 forState:UIControlStateNormal];
    }
    [self Answer];
}
- (IBAction)Answer3 {
    [AnswerButton1 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    [AnswerButton2 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    [AnswerButton3 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    [AnswerButton4 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    if(AnswerCount==3){
        QuestionLabel.text=[NSString stringWithFormat:@"Correct!"];
        ScoreCount++;
    }else{
        QuestionLabel.text=[NSString stringWithFormat:@"Wrong!"];
        [AnswerButton3 setBackgroundImage:[UIImage imageNamed:@"red.png"]
                                 forState:UIControlStateNormal];
    }
    [self Answer];
}
- (IBAction)Answer4 {
    [AnswerButton1 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    [AnswerButton2 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    [AnswerButton3 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    [AnswerButton4 setBackgroundImage:[UIImage imageNamed:@"gray.png"]
                             forState:UIControlStateNormal];
    if(AnswerCount==4){
        QuestionLabel.text=[NSString stringWithFormat:@"Correct!"];
        ScoreCount++;
    }else{
        QuestionLabel.text=[NSString stringWithFormat:@"Wrong!"];
        [AnswerButton4 setBackgroundImage:[UIImage imageNamed:@"red.png"]
                                 forState:UIControlStateNormal];
    }
    [self Answer];
}


-(void)UpdateView{
    //updating focused uibutton
    [self setNeedsFocusUpdate];
    [self updateFocusIfNeeded];
}

-(IBAction)Next{
    [AnswerButton1 setBackgroundImage:[UIImage imageNamed:@"blue.png"]
                        forState:UIControlStateNormal];
    [AnswerButton2 setBackgroundImage:[UIImage imageNamed:@"blue.png"]
                             forState:UIControlStateNormal];
    [AnswerButton3 setBackgroundImage:[UIImage imageNamed:@"blue.png"]
                             forState:UIControlStateNormal];
    [AnswerButton4 setBackgroundImage:[UIImage imageNamed:@"blue.png"]
                             forState:UIControlStateNormal];
    
    AnswerButton1.enabled=YES;
    AnswerButton2.enabled=YES;
    AnswerButton3.enabled=YES;
    AnswerButton4.enabled=YES;
    NextButton.enabled=NO;
    [NextButton setTitle:@"Next" forState:UIControlStateNormal];
    
    QuestionCount++;

    if(QuestionCount>14){
        QuestionCount=0;
        ScoreCount=0;
    }
    
    TopRightLabel.text=[NSString stringWithFormat:@"Score - %d of %d",ScoreCount,QuestionCount];
    TopLeftLabel.text=[NSString stringWithFormat:@"Question - %d of %d",QuestionCount+1,15];

    switch (QuestionCount)  {
            
        case 0:
            QuestionLabel.text = @"In Steven Spielberg’s 1982 film E.T. the Extra-Terrestrial what is the name of main boy?";
            [AnswerButton1 setTitle:@"Elliott" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"Edward" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"Elvis" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"Elton" forState:UIControlStateNormal];
            AnswerCount=1;
            break;
        case 1:
            QuestionLabel.text = @"In 1984 hit Ghostbusters what was the full name of the Marshmallow Man?";
            [AnswerButton1 setTitle:@"Stay Tough Marshmallow Man" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"Stay Rough Marshmallow Man" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"Stay Puft Marshmallow Man" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"Steve" forState:UIControlStateNormal];
            AnswerCount=3;
            break;
        case 2:
            QuestionLabel.text = @"In 1984 classic Beverly Hills Cop where was Eddie Murphy based before he moved out to Beverly Hills?";
            [AnswerButton1 setTitle:@"Chicago" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"Detroit" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"Denver" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"Miami" forState:UIControlStateNormal];
            AnswerCount=2;
            break;
        case 3:
            QuestionLabel.text = @"In Gremlins (1984) what time did it say you must NEVER feed a Mogwai after?";
            [AnswerButton1 setTitle:@"10pm" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"11pm" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"Midnight" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"Dusk" forState:UIControlStateNormal];
            AnswerCount=3;
            break;
        case 4:
            QuestionLabel.text = @"Who directed 1984 classic The Terminator?";
            [AnswerButton1 setTitle:@"Francis Ford Coppola" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"Tim Burton" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"Wes Anderson" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"James Cameron" forState:UIControlStateNormal];
            AnswerCount=4;
            break;
        case 5:
            QuestionLabel.text = @"In 1984 movie The Karate Kid what was the name of Daniel biggest rival?";
            [AnswerButton1 setTitle:@"Bobby" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"Johnny" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"Tommy" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"Daniel-son" forState:UIControlStateNormal];
            AnswerCount=2;
            break;
        case 6:
            QuestionLabel.text = @"In The Breakfast Club (1985), whose mother has a licence plate reading EMC 2?";
            [AnswerButton1 setTitle:@"Brian" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"Claire" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"Andrew" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"Alison" forState:UIControlStateNormal];
            AnswerCount=1;
            break;
        case 7:
            QuestionLabel.text = @"In Weird Science (1985) what is the name of Wyatt’s brother, played by Bill Paxton?";
            [AnswerButton1 setTitle:@"Chet" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"Rex" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"Chad" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"Chex" forState:UIControlStateNormal];
            AnswerCount=1;
            break;
        case 8:
            QuestionLabel.text = @"In 1985 film The Goonies, which character plays the piano in One-Eyed Willie’s musical trap?";
            [AnswerButton1 setTitle:@"Chunk" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"Andy" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"One of the Fratellies" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"Data" forState:UIControlStateNormal];
            AnswerCount=2;
            break;
        case 9:
            QuestionLabel.text = @"In 1985 film Back to the Future how much electric power does the DeLorean need to time-travel?";
            [AnswerButton1 setTitle:@"10 gigawatt" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"1.22 gigawatt" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"1.21 gigawatt" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"1 gigawatts" forState:UIControlStateNormal];
            AnswerCount=3;
            break;
        case 10:
            QuestionLabel.text = @"In Tom Cruise-starring 1986 hit Top Gun what percentage do the academy say they’re in?";
            [AnswerButton1 setTitle:@"The top 1% of aviators" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"The top 5% of aviators" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"The top 10% of aviators" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"The top 15% of aviators" forState:UIControlStateNormal];
            AnswerCount=1;
            break;
        case 11:
            QuestionLabel.text = @"In Matthew Broderick-starring 1986 film Ferris Bueller's Day Off, what song does he famously dance to in the parade?";
            [AnswerButton1 setTitle:@"Twist and Shout" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"Krush Groovin" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"The Heat Is On" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"Push It" forState:UIControlStateNormal];
            AnswerCount=1;
            break;
        case 12:
            QuestionLabel.text = @"In 1986 comedy Crocodile Dundee, actress Linda Kozlowski plays Sue but what is her character’s last name?";
            [AnswerButton1 setTitle:@"Chapman" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"Cole" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"Charlton" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"Coleman" forState:UIControlStateNormal];
            AnswerCount=3;
            break;
        case 13:
            QuestionLabel.text = @"In Big (1988) what does Tom Hank’s character Josh famously play in a department store?";
            [AnswerButton1 setTitle:@"A Tiny Trumpet" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"A Tiny Triangle" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"A Giant Guitar" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"A Giant Piano" forState:UIControlStateNormal];
            AnswerCount=4;
            break;
        case 14:
            QuestionLabel.text = @"What was the name of Bob Hoskins’ character in 1988 movie Who Framed Roger Rabbit?";
            [AnswerButton1 setTitle:@"Judge Doom" forState:UIControlStateNormal];
            [AnswerButton2 setTitle:@"Roger Rabbit" forState:UIControlStateNormal];
            [AnswerButton3 setTitle:@"Benny The Cab" forState:UIControlStateNormal];
            [AnswerButton4 setTitle:@"Eddie Valliant" forState:UIControlStateNormal];
            AnswerCount=3;
            break;
            
    }
    [self UpdateView];
}

@end
