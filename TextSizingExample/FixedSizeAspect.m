/*
     File: FixedSizeAspect.m
 Abstract: Demonstrates a single column that resizes in response to window size changes.
  Version: 1.2
 
 Disclaimer: IMPORTANT:  This Apple software is supplied to you by Apple
 Inc. ("Apple") in consideration of your agreement to the following
 terms, and your use, installation, modification or redistribution of
 this Apple software constitutes acceptance of these terms.  If you do
 not agree with these terms, please do not use, install, modify or
 redistribute this Apple software.
 
 In consideration of your agreement to abide by the following terms, and
 subject to these terms, Apple grants you a personal, non-exclusive
 license, under Apple's copyrights in this original Apple software (the
 "Apple Software"), to use, reproduce, modify and redistribute the Apple
 Software, with or without modifications, in source and/or binary forms;
 provided that if you redistribute the Apple Software in its entirety and
 without modifications, you must retain this notice and the following
 text and disclaimers in all such redistributions of the Apple Software.
 Neither the name, trademarks, service marks or logos of Apple Inc. may
 be used to endorse or promote products derived from the Apple Software
 without specific prior written permission from Apple.  Except as
 expressly stated in this notice, no other rights or licenses, express or
 implied, are granted by Apple herein, including but not limited to any
 patent rights that may be infringed by your derivative works or by other
 works in which the Apple Software may be incorporated.
 
 The Apple Software is provided by Apple on an "AS IS" basis.  APPLE
 MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION
 THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS
 FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND
 OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.
 
 IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL
 OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION,
 MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED
 AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE),
 STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE
 POSSIBILITY OF SUCH DAMAGE.
 
 Copyright (C) 2012 Apple Inc. All Rights Reserved.
 
 */


#import "FixedSizeAspect.h"


@implementation FixedSizeAspect
/* The text container will always match the size of the text view; any text that doesn't fit in it will simply be cut off.
 */
- (NSTextContainer *)textContainerForLayoutManager:(NSLayoutManager *)layoutManager {
    NSTextContainer *textContainer = [super textContainerForLayoutManager:layoutManager];
    [textContainer setWidthTracksTextView:YES];
    [textContainer setHeightTracksTextView:YES];
    return textContainer;
}

/* The text view does not resize to fit its contents, but it can be resized by its enclosing view; it will take up as much space as is given to it.
 */
- (NSTextView *)textViewForTextContainer:(NSTextContainer *)textContainer {
    NSTextView *view = [super textViewForTextContainer:textContainer];
    [view setHorizontallyResizable:NO];
    [view setVerticallyResizable:NO];
    [view setAutoresizingMask:(NSViewWidthSizable | NSViewHeightSizable)];
    return view;
}

- (NSString *)title {
    return NSLocalizedString(@"Non-scrolling Text", @"Display name for FixedSizeController.");
}

@end
