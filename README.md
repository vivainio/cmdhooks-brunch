## cmdhooks-brunch

Add support for post-compile command line hooks for [brunch](http://brunch.io).

## Usage

Add this to your `package.json` 

```javascript

"dependencies": {
	...
	"cmdhooks-brunch": "git+ssh://git@github.com:vivainio/cmdhooks-brunch.git"
	...
}
```

Next to your package.json, create a script called `hook_compile` that is executed
every time after the project has been compiled (e.g. during `brunch watch` session). 

This can include copying the files somewhere, or running various validation scripts.

Example:

```
$ echo "echo hello" > hook_compile
$ chmod +x hook_compile
$ brunch build
Execing /home/ville/p/ahpcli-awa/hook_compile
28 Feb 20:26:00 - info: compiled in 115ms
Out:hello
```
