cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.874"
  sha256 arm:   "9aff34a2ca637803ad7115e0cb951509568d16411aaa80611e3b231b5cdda798",
         intel: "b20b1de9589afa9863ce22535f8cc00e3b16a8e37d384792715cb5ea5f29f5b3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
