# 再生速度変更 AviSynth スクリプトジェネレータ

$VERSION$ ( $GITHASH$ ) by oov

元の動画に対し、音の高さを変えずに再生速度を変えた avs スクリプトを生成するバッチファイルです。

動画ファイルをドラッグするだけで、スクリプトファイルを作成できます。

## 注意事項

このプログラムは無保証で提供されます。  
このプログラムを使用したこと及び使用しなかったことによるいかなる損害について、開発者は何も責任を負いません。

これに同意できない場合、あなたはこのプログラムを使用することができません。

## ダウンロード

https://github.com/oov/avs_change_speed/releases

## インストール

このスクリプトは [AviSynth+ 3.7.0](https://github.com/AviSynth/AviSynthPlus/releases/tag/v3.7.0) と [L-SMASH Works r940 mod1](https://pop.4-bit.jp/?page_id=7929) で動作確認しています。  
以下のような手順で両者を導入しておいてください。

1. `AviSynthPlus_3.7.0_20210111_vcredist.exe` あたりをインストールする<br>
2. `L-SMASH_Works_r940m1_plugins.zip` の中にある  
`AviSynth\LSMASHSource.dll` を  
`C:\Program Files (x86)\AviSynth+\plugins` へコピー
3. `L-SMASH_Works_r940m1_plugins.zip` の中にある  
`AviSynth\win64\LSMASHSource.dll` を  
`C:\Program Files (x86)\AviSynth+\plugins64` へコピー

上記の環境が正しく整っていれば、バッチファイルは動作するはずです。

## 使い方

例えば動画ファイルを `x2.bat` に投げ込むと、`元のファイル名_x2.avs` のようなファイルを動画ファイルと同じ場所に生成します。  
このファイルを `*.avs` の再生に対応したソフトで再生すると、動画が2倍速で再生されます。

- `x0.125.bat`
- `x0.25.bat`
- `x0.5.bat`
- `x1.bat`
- `x2.bat`
- `x4.bat`
- `x8.bat`
- `x16.bat`

上記のバッチファイル群は全て同じように使用できます。

### カスタマイズ

必要に応じて `template.txt` を書き換えると、ハードウェアデコーダーを有効にしたり、オーディオ処理の品質を変えたりすることができます。

使い方は AviSynth や L-SMASH Works などのドキュメントを参照してください。

### 高度な使い方

`genavs.bat` を `genavs.bat 3 C:\Path\To\動画.mp4 C:\Path\To\動画_x3.avs` のような形で呼び出すと、3倍速の動画ファイルを作成することもできます。  
このバッチファイル内では引数のチェックなどは行っていないので、取り扱いには注意が必要です。

### フレーム計算機

`calc.html` をブラウザーで開くと、元動画と速度変更後の動画で対応するフレーム数を計算できます。  
動画をカット編集したりする場合に便利です。