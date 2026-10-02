cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.619"
  sha256 arm:   "030c4be1cf0b07ad9bdd139a923cff0a95b02d95306167b62b1b97452b59852a",
         intel: "6a9ecd7a394c8a8cf2fe8003c079fe43dd910565c8e1121dec36eb7b198794c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
