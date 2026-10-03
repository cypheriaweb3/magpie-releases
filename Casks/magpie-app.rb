cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.766"
  sha256 arm:   "b2625563bf5c59fc466a6cb4a1f0643827603373c054254014670cc9009fef53",
         intel: "a9d882bf9e72f6ce5da8dd0160ffb899f5f7a9d811c48fdd0c448ba800af5b64"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
