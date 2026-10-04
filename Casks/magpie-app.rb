cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.864"
  sha256 arm:   "da9d060aed6a5f96d7c4d819c957dfaafa6bf0294201901c968c52fd33842f79",
         intel: "73692ca1648fda156a33afb42bdef3021a29678ba38e4376fc58b750a9e2300d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
