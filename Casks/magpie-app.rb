cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.278"
  sha256 arm:   "e4e1fd3c32171d2aed5789cbb8f00eaef485cfa8bc20baa75b05ea69d6ff43ee",
         intel: "b18e0a85191e94c00473e695803ab61637ce0f4dd20b30e4ed769bba4e01ebf8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
