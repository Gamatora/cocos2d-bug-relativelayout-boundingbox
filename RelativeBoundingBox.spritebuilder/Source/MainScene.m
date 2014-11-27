#import "MainScene.h"

@implementation MainScene

- (void)didLoadFromCCB
{
    self.userInteractionEnabled = YES;
}

- (void)touchBegan:(CCTouch*)touch withEvent:(CCTouchEvent*)event
{
    [self goToSecondSceneWithRelativeLayoutWorkaround];
}

// Illustrate bug #1
//   When subclass of CCScene is not wraped into a std CCScene, relative layouts are BROKEN
- (void)goToSecondSceneWithRelativeLayoutWorkaround
{
    CCScene* scene = (CCScene*)[CCBReader loadAsScene:@"SecondScene"];
    [[CCDirector sharedDirector] presentScene:scene];
}

// Illustrate bug #2
//   When subclass of CCScene is not wraped into a std CCScene, relative layouts are BROKEN
- (void)goToSecondSceneWithRelativeLayoutBug
{
    CCScene* scene = (CCScene*)[CCBReader load:@"SecondScene"];
    [[CCDirector sharedDirector] presentScene:scene];
}

@end
