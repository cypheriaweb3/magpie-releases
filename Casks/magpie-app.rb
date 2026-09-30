cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.452"
  sha256 arm:   "3c3eaa9cfc78a66c177ef620b066e1e176d3efd92a8af171187fbc084da52fa8",
         intel: "5ee6196fab4078fb1fd1c54ca24ca49087e6550eb33e77f86f289a47d9cafc6f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
