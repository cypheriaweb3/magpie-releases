cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.444"
  sha256 arm:   "cbbfd078236df0fc1906b969bec1de2d4a8f726b4fd5428e51d8f3c7c59e7be7",
         intel: "45a53bdf3dc91db951b8d27fd9fd0352e4521799bb103fc0eaeb31aa3981a982"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
