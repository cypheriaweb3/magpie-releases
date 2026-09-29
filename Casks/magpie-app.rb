cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.399"
  sha256 arm:   "da5d8042c8c0841c2668030197906534c8c168da762a41c3893c3a5c5328ad21",
         intel: "91ff39413b444362f815decb70e533dcb24f3737d075517991490c2ff22d9a00"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
