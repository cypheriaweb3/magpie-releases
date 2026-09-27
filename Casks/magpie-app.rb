cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.206"
  sha256 arm:   "85ebb9a7ca024044d271960e48f42fa6ad4d183a8bb93a4494ec6aceab717210",
         intel: "1dc224d3368059ab86a9fc9685958da09d69cec01beae4f583b327170482cc5a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
