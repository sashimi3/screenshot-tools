# screenshot-tools

スクリーンショットの取得効率化ツールです.

## File tree

```
.
├── README.md
├── assets
│   ├── 1234.png
│   ├── 1234_behind_dialog.png
│   ├── 1234_black.png
│   ├── 1234_black_behind_dialog.png
│   ├── comm_1234.png
│   ├── comm_1234_behind_dialog.png
│   └── top_header.png
├── composite_dialog.sh
├── composite.sh
├── screen_cap.s
└── screen_cap_specify.sh
```

- assets - 合成用画像郡.
- composite*.sh - 実行ディレクトリ内の *.png ファイルとassets内の画像を合成します.
- screen_cap.sh - adb経由でデバイスのスクリーンショットを取得します. 複数デバイス接続時は動作しません.
- screen_cap_specify.sh - デバイス名指定でadb経由でデバイスのスクリーンショットを取得します. 複数デバイス接続時等に利用します.

## screen_cap_specify.sh の使い方

```bash
$ adb devices # デバイス一覧を取得
List of devices attached
hoge        device
fuga        device
piyo        device

$ ./screen_cap_specify.sh hoge # 任意デバイスのスクリーンショットを取得
/sdcard/20181119045249.png: 1 file pulled. 5.1 MB/s (49957 bytes in 0.009s)
