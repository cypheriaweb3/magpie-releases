cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.837"
  sha256 arm:   "8f44582f0709dac5adf360a696c51efc761b818652b466aedf79d520dfdff804",
         intel: "21fbdc9137b96749b670d4d4bfb4308acbeba69a1552cffe887a4120cae5e040"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
