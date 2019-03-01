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