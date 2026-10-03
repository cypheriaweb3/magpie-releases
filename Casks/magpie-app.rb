cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.739"
  sha256 arm:   "496bde9c4a3dfaab66b704ef5cef817ecbed62c210e7bb4511d875c2c62cf986",
         intel: "9213f27654a260033ce1747eb38c35c7dd7d4666ec3dbf6e614e73f0a7b13c68"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
