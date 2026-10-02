cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.673"
  sha256 arm:   "87226dd21203f02b903135946b95e01b3447fc6a49a5f0da04a17c32c3e79914",
         intel: "b2c12ecaf9cc26b09ad314f8abe74701dc325331adfa8c2924a86281b3faa1c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
