cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.456"
  sha256 arm:   "20bd2220b2552383ce39ca452147df86e6aa176b01373cd900394790857311c0",
         intel: "109c3904e001936187497ae354ac1d65c0cec3c65333ecde9a385a04899685a1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
