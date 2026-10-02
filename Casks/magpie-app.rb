cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.691"
  sha256 arm:   "8a9a66f35248f4633cc089334b763a18ea15e3904a6b7576c9ff566735bb014a",
         intel: "012d78f5e3330be284e4b2e45018ff690770f2048cf7c7814f46629f858a7c66"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
