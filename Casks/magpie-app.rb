cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.723"
  sha256 arm:   "e6b9a72c2154367d36a93b8ee8119bc36aa0fdad006a675e65ed459bbd84d20c",
         intel: "e39bfeb36da236262e4067436e79efb83d1c978eadad797e0bc32cb6f499d480"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
