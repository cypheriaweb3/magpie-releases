cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.434"
  sha256 arm:   "1cd7dce66c0a5ea2ab74d4805a239be5a9f905608ad791ccae5aab6890ca8ff6",
         intel: "7749e60fa909dbaef2c591e10131bcd346896a2fce304eafd2874d4f906338f9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
