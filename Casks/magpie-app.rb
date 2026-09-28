cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.238"
  sha256 arm:   "9ed090de9d73e5fad18c7550bf5e4236e2f71235b992590635f217399fd24805",
         intel: "4bd42fadab071f8974d1a7c986accfa983a935b04a2921b016ae50da7cdf7b68"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
