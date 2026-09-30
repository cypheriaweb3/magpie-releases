cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.522"
  sha256 arm:   "f68f186053dcfacf78d57f64c1bcdcc07f1bdeaa335a25b32c3c9e1f674f10cf",
         intel: "058e99332d8e027658840761a15a7d5b17b66483ccf9ea72de38be319038790e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
