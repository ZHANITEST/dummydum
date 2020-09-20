import std.stdio;
import std.file;

void main(string[] args){
	if(args.length >= 2 && exists(args[1])){
		File f = File(args[1], "r");
		string s;
		while(!f.eof()){
			s ~= f.readln();
		}
		writeln("[ "~ args[1] ~" ]");
		writeln(s);

		import dummydum.parser;
		JsonParser parser = new JsonParser(s);
		writeln(parser.getErrorMessages());
	} else {
		writeln("NONE");
	}
}