const fs   = require('fs')
const path = require('path')

fs.readdir(path.resolve(__dirname, 'records'), function (err, files) {
  console.log(files)

  var ss = `# records
* [records](README.md)
`
  files.sort(function (a, b) {
    return a.length - b.length
  })

  for (let i = 0; i < files.length; ++i) {

    let file = files[i]

    if (file === '.DS_Store') {continue}

    ss += `    - [${file}](records/${file}/${file}.md)\n`

  }
  let filepath = path.resolve(__dirname, 'SUMMARY.md')
  let content  = ss
  fs.writeFile(filepath, content, function (err) {
    if (err) {return console.error(err)}
    console.log('数据写入成功！')
  })
})
