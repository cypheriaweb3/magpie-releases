cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.817"
  sha256 arm:   "a82adf76632f37537fe7567fcdaad6c8c65702bdb77ffcc9944ac6e918ab4e19",
         intel: "e5126e4b2f059f874d770d1227f01bbcd64da35cf2336881aa74e5a193d9d62b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
