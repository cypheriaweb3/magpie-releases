cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.392"
  sha256 arm:   "6a0147f61fa2ad76f356e4d2cf3d9576bbcf28df05a9a431cc7c556a38595b5d",
         intel: "26c029a0e03f2df193c5cdd7d80657ef6a26761c8b63dd7b74354ffca32076c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
