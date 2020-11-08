@(工作笔记)

# Alfred-record

[TOC]

---

![Alt text](./1550024971942.png)

```
/hello world/
```

---

## icon 不能写url, 只能是本地的
Can i use Icons from the web in alfred 3?
https://www.alfredforum.com/topic/8977-can-i-use-icons-from-the-web-in-alfred-3/

>Nope, no URLs.

Three kinds of icon are supported. You can pass the path to an actual image file, e.g. "icon":{"path":"./icon.png"}, you can pass the path to a file whose icon you'd like to use, e.g. "icon":{"path":"/Applications/Safari.app", "type":"fileicon"} to show Safari's icon, or you can pass a file type in the form of a UTI, e.g. "icon":{"path":"public.folder", "type":"filetype"} to show the standard folder icon.

支持三种图标。您可以将路径传递到实际的图像文件，例如"icon"：{"path"："./icon.png"}，
您可以将路径传递到要使用的图标的文件，例如"icon"：{"path"："/Applications/Safari.app"，"type"："fileicon"}以显示Safari的图标，
或者您可以UTI的形式传递文件类型，例如"图标"：{"path"："public.folder"，"type"："filetype"}以显示标准文件夹图标。



---



## Script Filter JSON Format

<https://www.alfredapp.com/help/workflows/inputs/script-filter/json/>

```json
{"items": [
    {
        "uid": "desktop",
        "type": "file",
        "title": "Desktop",
        "subtitle": "~/Desktop",
        "arg": "~/Desktop",
        "autocomplete": "Desktop",
        "icon": {
            "type": "fileicon",
            "path": "~/Desktop"
        }
    }
]}
```



## Script Filter Input

<https://www.alfredapp.com/help/workflows/inputs/script-filter/>



## How to use Bash variable in Script Filter output?

<https://www.alfredforum.com/topic/9639-how-to-use-bash-variable-in-script-filter-output/>

```bash
time=$(date "+%I:%M %p")
date=$(date "+%A, %B %d, %Y")

cat << EOB
{"items": [

	{
		"uid": "time",
		"title": "${time}",
		"subtitle": "${date}",
	}

]}
EOB
```



---

## Alfred Workflow 추천
<https://creseed.blogspot.com/2019/02/alfred-workflow_79.html>



## alfred workflow의 한글 처리

<http://jmjeong.com/unicode-in-alfred-workflow/>

<http://jmjeong.com/page8/>



# Alfred-Workflow python包

<https://github.com/deanishe/alfred-workflow>

<https://www.deanishe.net/alfred-workflow/>



## Korean Input Is different in Alfred vs. Terminal

<https://www.alfredforum.com/topic/4301-korean-input-is-different-in-alfred-vs-terminal/?tab=comments#comment-25876>



## Alfred 问题搜索

<https://www.alfredforum.com/search/?&q=Korean&page=2&search_and_or=and&sortby=relevancy>





---



## Karabiner-Elements 键盘自定义

<https://karabiner-elements.pqrs.org/>



## alfred 仓库

<http://www.packal.org/>





---

## alfy

[alfy](https://github.com/sindresorhus/alfy)



package.json 中添加 并执行 postinstall

```
  "scripts"      : {
    "test"         : "echo \"Error: no test specified\" && exit 1",
    "postinstall"  : "alfy-init",
    "preuninstall" : "alfy-cleanup"
  },
```



workflow 目录下 必须有 package.json 空的也行...





## 重建索引

<https://www.alfredapp.com/help/troubleshooting/indexing/>