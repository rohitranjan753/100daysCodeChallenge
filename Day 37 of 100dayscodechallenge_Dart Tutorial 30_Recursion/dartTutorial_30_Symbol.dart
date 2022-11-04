//Date 04/11/2022 07:20 PM

//Dart programming fundamentals.
//Topics covered is Symbol.


//Symbol object is used to specify an operator or identifier declared in a Dart programming language.
//Generally, we do not need to use symbols while Dart programming, but they are helpful for APIs.
//It usually refers to identifiers by name, because identifier names can vary but not identifier symbols.

import 'dart:core';   
import 'dart:mirrors';   
import 'Foo.dart';    
  
main() {   
   Symbol lib = new Symbol("foo_lib");     
   //library name stored as Symbol   
     
   Symbol clsToSearch = new Symbol("Foo");    
   // class name stored as Symbol    
     
   if(checkIf_classAvailableInlibrary(lib, clsToSearch))    
   // searches Foo class in foo_lib library   
      print("class found..");   
}    
     
bool checkIf_classAvailableInlibrary(Symbol libraryName, Symbol className) {   
   MirrorSystem mirrorSystem = currentMirrorSystem();   
   LibraryMirror libMirror = mirrorSystem.findLibrary(libraryName);   
        
   if (libMirror != null) {   
      print("Found Library");   
      print("checkng...class details..");   
      print("No of classes found is : ${libMirror.declarations.length}");   
      libMirror.declarations.forEach((s, d) => print(s));    
           
      if (libMirror.declarations.containsKey(className)) return true;   
      return false;   
   }   
}  
</pre></div>  
<p>The above code will show the following output.</p>  
<p><strong>Output:</strong></p>  
<div class="codeblock"><pre>  
Found Library  
checkng...class details..  
No of classes found is : 1  
Symbol("Foo") // Displays the class name  
class found..  
</pre></div>  
<p><strong>Example - 2 : Print the number of instance methods of class</strong></p>  
<p>In the following example, The Dart provides predefine class <strong>ClassMirror</strong> which helps us to display the number of instance methods of class.</p>  
<p><strong>Example -</strong></p>  
<div class="codeblock"><textarea name="code" class="java">  
import 'dart:core';   
import 'dart:mirrors';   
import 'Foo.dart';    
  
main() {   
   Symbol lib = new Symbol("foo_lib");   
   Symbol clsToSearch = new Symbol("Foo");    
   reflect_InstanceMethods(lib, clsToSearch);   
}    
void reflect_InstanceMethods(Symbol libraryName, Symbol className) {   
   MirrorSystem mirrorSystem = currentMirrorSystem();   
   LibraryMirror libMirror = mirrorSystem.findLibrary(libraryName);   
     
   if (libMirror != null) {   
      print("Found Library");   
      print("checkng...class details..");   
      print("No of classes found is : ${libMirror.declarations.length}");   
      libMirror.declarations.forEach((s, d) => print(s));    
        
      if (libMirror.declarations.containsKey(className)) print("found class");  
      ClassMirror classMirror = libMirror.declarations[className];   
        
      print("No of instance methods found is ${classMirror.instanceMembers.length}");  
      classMirror.instanceMembers.forEach((s, v) => print(s));   
   }   
}