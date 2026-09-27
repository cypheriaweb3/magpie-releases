cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.205"
  sha256 arm:   "e1a2bf703969af337770141c5da71821e20db3c0dd2a76bc55375ecaf0ddc86d",
         intel: "179674bfcf15ad6669267ea3bd66c6c51ee1ff1af7d0e503002e054172aaeddf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
