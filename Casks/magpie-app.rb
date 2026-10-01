cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.604"
  sha256 arm:   "14a3d12f6f5d51f7cd1af8f8eec327a35e092e5dbb12da0c6d94437152428ff3",
         intel: "767678e373cb4b533235a613131a98099d58464f595fab3b20dbc86948fbe5f3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
