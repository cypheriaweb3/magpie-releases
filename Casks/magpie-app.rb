cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.744"
  sha256 arm:   "02f7cf0163530f6ad12c69fad27437d57e675f55efec039834e049d637cd3d43",
         intel: "3661c4907182399e5b059d6612aacd8c7ed14ba23bd2083846d9d01ade572590"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
