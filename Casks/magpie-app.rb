cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.376"
  sha256 arm:   "764bd0499d2baaa0b38aeeb1de5385a1b3faebd76df614854fd08d90d72cde6b",
         intel: "c9b70c7e1335a501cedba56a301ab6f1cfc853551ab90e36624f222d2d0d2342"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
