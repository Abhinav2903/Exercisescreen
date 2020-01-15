//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<flutter_youtube/FlutterYoutubePlugin.h>)
#import <flutter_youtube/FlutterYoutubePlugin.h>
#else
@import flutter_youtube;
#endif

#if __has_include(<youtube_api/YoutubeApiPlugin.h>)
#import <youtube_api/YoutubeApiPlugin.h>
#else
@import youtube_api;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FlutterYoutubePlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterYoutubePlugin"]];
  [YoutubeApiPlugin registerWithRegistrar:[registry registrarForPlugin:@"YoutubeApiPlugin"]];
}

@end
