cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.373"
  sha256 arm:   "b526a732fa6ea772ec8d3818d8ed97797a210a68291e7c8f411749c65f6f16d7",
         intel: "b634537fad6e834f1f6e535b9827b2b26cc75159da63f4477a38f3988bcbcb1f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
