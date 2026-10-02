cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.630"
  sha256 arm:   "1249e2cf3cbee2b0397ecd1692a255d7fd57534a7e7ed20b06606d73db703589",
         intel: "f91644b8ccc177f414fd7ce494ad422e6201f36961af397d99f238f19f1b7957"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
