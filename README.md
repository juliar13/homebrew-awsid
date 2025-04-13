# Homebrew Formula for AWSID

このリポジトリはAWSアカウントのエイリアス名からアカウントIDを出力するCLIツール「awsid」のHomebrew Formulaを提供します。

## インストール方法

以下のコマンドでインストールできます：

```bash
# tapを追加
brew tap juliar13/awsid

# awsidをインストール
brew install awsid
```

## 使い方

詳しい使い方は[awsidリポジトリ](https://github.com/juliar13/awsid)をご覧ください。

### 基本的な使い方

```bash
# 全てのアカウント情報を表示
awsid

# 特定のエイリアス名に対応するアカウントIDを表示
awsid yamasaki-test

# JSON形式で出力
awsid yamasaki-test --json
```

## ライセンス

MIT
