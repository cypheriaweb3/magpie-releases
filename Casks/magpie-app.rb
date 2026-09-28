cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.338"
  sha256 arm:   "597a2caeffea4849c5ab71d621daceb11d848b95dba26702f12cceea6df95a1a",
         intel: "e7ffdb2f50c384b3d9a4f3bba405c8abbb68ea93981471113d09833df43e08bc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
