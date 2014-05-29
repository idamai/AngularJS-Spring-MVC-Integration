<div class="container-fluid">
  <div class="row">
    <div class="col-md-2">
      <!--Sidebar content-->

      Search: <input ng-model="query">
      Sort by:
      <select ng-model="orderProp">
        <option value="title">Title</option>
        <option value="fullname">Full Name</option>
      </select>

    </div>
    <div class="col-md-10">
      <!--Body content-->

      <ul class="books">
       <li ng-repeat="book in books | filter:query | orderBy:orderProp"
           class="book-listing">
           <a href="#/books/{{book.id}}">{{book.fullname}}</a>
        <br/>
         <p>{{book.title}}</p>
         <br/>
       </li>
     </ul>

    </div>
  </div>
</div>
