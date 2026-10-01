cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.603"
  sha256 arm:   "7c22bc7f435dbdc0392e6c9cb5e424b81f6a61149d29e107cfb849a237287395",
         intel: "f3e03e3e80b18512b920ac262333a6280af15675da6773c67c017ac53a60cea8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
