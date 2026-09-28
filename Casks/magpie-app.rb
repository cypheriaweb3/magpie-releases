cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.257"
  sha256 arm:   "c9ad58815b7712dac7230ed0df791be969e32de892d07bc14cef7b938df3f93f",
         intel: "8ec98050913f351e4d52baf083c2ce3d9cc82cd13a2062600a2e092ed565ded0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
