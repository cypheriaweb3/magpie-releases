cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.832"
  sha256 arm:   "f354e6147a384d470606a9f6edc58e4768dd6331d8963488a999f7cad1fabb86",
         intel: "3274201c6d692b114133db24363f8559df662bef068676387d9b8ba42ab52ae2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
