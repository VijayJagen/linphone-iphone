/*
 * Copyright (c) 2010-2020 Belledonne Communications SARL.
 *
 * This file is part of linphone-iphone
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#import "UILoadingImageView.h"

@implementation UILoadingImageView

@synthesize waitIndicatorView;

#pragma mark - Lifecycle Functions

- (void)initUIRemoteImageView {
	waitIndicatorView =
		[[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
	waitIndicatorView.hidesWhenStopped = TRUE;
	waitIndicatorView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin |
										 UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
	waitIndicatorView.center = self.center;
	[self addSubview:waitIndicatorView];
}

- (id)init {
	self = [super init];
	if (self != nil) {
		[self initUIRemoteImageView];
	}
	return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
	self = [super initWithCoder:aDecoder];
	if (self != nil) {
		[self initUIRemoteImageView];
	}
	return self;
}

- (id)initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	if (self != nil) {
		[self initUIRemoteImageView];
	}
	return self;
}

- (id)initWithImage:(UIImage *)image {
	self = [super initWithImage:image];
	if (self != nil) {
		[self initUIRemoteImageView];
	}
	return self;
}

- (id)initWithImage:(UIImage *)image highlightedImage:(UIImage *)highlightedImage {
	self = [super initWithImage:image highlightedImage:highlightedImage];
	if (self != nil) {
		[self initUIRemoteImageView];
	}
	return self;
}

#pragma mark -

- (void)startLoading {
	[waitIndicatorView startAnimating];
}

- (void)stopLoading {
    
	[waitIndicatorView stopAnimating];
}

- (BOOL)isLoading {
	return [waitIndicatorView isAnimating];
}

@end
