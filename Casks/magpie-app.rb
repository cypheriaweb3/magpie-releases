cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.428"
  sha256 arm:   "fd1ced0d9a006514f57844455f9ee4293e5542b8f626a43aaad66fd5d4dca43e",
         intel: "3924016d8961b2a93dfe0ce9fafe0bd3e05126ea3473d30f1b62cd7d459ec120"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
