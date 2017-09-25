# AnimatedTableCell
Animating UITableViewCell  
1. Set initial state  
2. Set end state (after animation)  
3. Implement on  
  override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {  
      Both on cell.layer.transfrom with CATransform3D  
      Animate cell with UIView.animate(withDuration:) { end state }  
  }  
