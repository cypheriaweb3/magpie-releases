cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.490"
  sha256 arm:   "c1b4dfd91898b069ebeb222c71118b97481522f622e48b453756b36b68ab2190",
         intel: "cc5eb4802f4f1399294c348b35f0a1d58217bc72b0efb1caea9adb21acf3bc99"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
