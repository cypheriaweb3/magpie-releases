cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.166"
  sha256 arm:   "5d56d81e79fa00b58f266e3875837463bbfb8a6b486452a4620841f25375bb93",
         intel: "2dec5d689682cadd1fd9e4f90f9aab748c8d7b9648f490db51706931a7c6f375"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
