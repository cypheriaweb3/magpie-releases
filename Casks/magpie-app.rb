cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.732"
  sha256 arm:   "7b2abe51f31ceb440d8b4c365ff1e6c08ef2ccd34adbc58232e2604430c04f44",
         intel: "12632e3fc59fa86973cd2a3093ec3591f3be7c37e6608efc164cbfb94436e718"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
