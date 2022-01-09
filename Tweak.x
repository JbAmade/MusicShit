#define PLIST_PATH @"/var/mobile/Library/Preferences/com.jb.musicshit.plist"

BOOL checkIfEnabled(void){
	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:PLIST_PATH];
	id isEnabled = [bundleDefaults valueForKey:@"isEnabled"];
	return [isEnabled isEqual:@1];
}

%hook _UINavigationBarLargeTitleView

-(void)setTitle:(id)arg1{
	if (checkIfEnabled()){
		if ([arg1 isEqualToString:@"Library"]){
			%orig(@"Good Shit 🎵");
		}
		else if ([arg1 isEqualToString:@"Browse"]){
			%orig(@"Tendance Shit 🎸");
		}
		else if ([arg1 isEqualToString:@"Search"]){
			%orig(@"New Shit 🔎");
		}
		else if ([arg1 isEqualToString:@"Radio"]){
			%orig(@"Noisy Shit 📻");
		}
		else if ([arg1 isEqualToString:@"Listen Now"]){
			%orig(@"Mixed Shit 😎");
		}
		else {
			%orig;
		}
	}
	else {
		%orig;
	}
}

%end

%hook _UINavigationBarContentView

-(void)setTitle:(id)arg1{
	if (checkIfEnabled()){
		if ([arg1 isEqualToString:@"Library"]){
			%orig(@"Good Shit 🎵");
		}
		else if ([arg1 isEqualToString:@"Browse"]){
			%orig(@"Tendance Shit 🎸");
		}
		else if ([arg1 isEqualToString:@"Search"]){
			%orig(@"New Shit 🔎");
		}
		else if ([arg1 isEqualToString:@"Radio"]){
			%orig(@"Noisy Shit 📻");
		}
		else if ([arg1 isEqualToString:@"Listen Now"]){
			%orig(@"Mixed Shit 😎");
		}
		else {
			%orig;
		}
	}
	else {
		%orig;
	}
}

%end