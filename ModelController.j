/*
 * ModelController.j
 * CPDoubleBindingsError
 *
 * Created by Udo Schneider on December 16, 2013.
 * Copyright 2013, Krodelin Software All rights reserved.
 */

@import <Foundation/Foundation.j>
@import "Model.j"

@implementation ModelController : CPWindowController
{
    @outlet CPArrayController	_arrayController	@accessors;
}

- (void)awakeFromCib
{
	var array = [[CPMutableArray alloc] init];
	for (var i=0; i < 20; i++)
	{
		var model = [[Model alloc] init];
		[model setNumberValue:i];
		[array addObject:model];
	}
	[_arrayController setContent:array];
}

@end
